import Foundation
// Import Hedera SDK if necessary
import hedera
public class HederaManager {
    
    public init() {
        // Initialize any necessary Hedera components
    }

    public func getAccountBalance(accountId: String) async throws -> Hbar {
           let client = Client.forTestnet()
           let accountBalanceQuery = AccountBalanceQuery()
               .accountId(AccountId(accountId)!)
           let ab = try await accountBalanceQuery.execute(client)
        return ab.hbars // Ensure 'balance' is the correct property name
       }
    }
