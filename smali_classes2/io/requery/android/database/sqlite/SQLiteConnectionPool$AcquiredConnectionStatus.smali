.class final enum Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
.super Ljava/lang/Enum;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AcquiredConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum NORMAL:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum RECONFIGURE:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 101
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 104
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "RECONFIGURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 107
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "DISCARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .locals 1

    .line 99
    const-class v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object p0
.end method

.method public static values()[Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .locals 1

    .line 99
    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v0}, [Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method
