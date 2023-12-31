.class public final enum Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
.super Ljava/lang/Enum;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 505
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v1, 0x0

    const-string v2, "BREAK_OPEN"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 506
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v2, 0x1

    const-string v3, "OPEN_FROM_HOME"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 507
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v3, 0x2

    const-string v4, "OPEN_FROM_RECENTS"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 508
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v4, 0x3

    const-string v5, "CLOSE_TO_RECENTS"

    invoke-direct {v0, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 509
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v5, 0x4

    const-string v6, "CLOSE_TO_HOME"

    invoke-direct {v0, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 510
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v6, 0x5

    const-string v7, "CLOSE_FROM_FEED"

    invoke-direct {v0, v7, v6}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 511
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v7, 0x6

    const-string v8, "APP_TO_APP"

    invoke-direct {v0, v8, v7}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 512
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v8, 0x7

    const-string v9, "START_FIRST_TASK"

    invoke-direct {v0, v9, v8}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 513
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v9, 0x8

    const-string v10, "CLOSE_TO_DRAG"

    invoke-direct {v0, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 504
    sget-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 504
    const-class v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 504
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0}, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object v0
.end method
