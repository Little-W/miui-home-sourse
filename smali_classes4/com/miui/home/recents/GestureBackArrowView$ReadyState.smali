.class final enum Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
.super Ljava/lang/Enum;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureBackArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/GestureBackArrowView$ReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/4 v1, 0x0

    const-string v2, "READY_STATE_NONE"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/4 v2, 0x1

    const-string v3, "READY_STATE_BACK"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/4 v3, 0x2

    const-string v4, "READY_STATE_RECENT"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    .line 81
    sget-object v4, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->$VALUES:[Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 1

    .line 81
    const-class v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 1

    .line 81
    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->$VALUES:[Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v0}, [Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object v0
.end method
