.class public final enum Lkotlinx/coroutines/channels/BufferOverflow;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/channels/BufferOverflow;

.field public static final enum DROP_LATEST:Lkotlinx/coroutines/channels/BufferOverflow;

.field public static final enum DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

.field public static final enum SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/coroutines/channels/BufferOverflow;

    new-instance v1, Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x0

    const-string v3, "SUSPEND"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/channels/BufferOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x1

    const-string v3, "DROP_OLDEST"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/channels/BufferOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x2

    const-string v3, "DROP_LATEST"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/channels/BufferOverflow;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_LATEST:Lkotlinx/coroutines/channels/BufferOverflow;

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->$VALUES:[Lkotlinx/coroutines/channels/BufferOverflow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/channels/BufferOverflow;
    .locals 1

    const-class v0, Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/BufferOverflow;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/channels/BufferOverflow;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->$VALUES:[Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-virtual {v0}, [Lkotlinx/coroutines/channels/BufferOverflow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/channels/BufferOverflow;

    return-object v0
.end method
