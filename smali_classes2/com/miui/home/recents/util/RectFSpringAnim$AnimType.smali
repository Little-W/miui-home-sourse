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

.field public static final enum CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 507
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "BREAK_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 508
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "OPEN_FROM_HOME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 509
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "OPEN_FROM_RECENTS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 510
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "CLOSE_TO_RECENTS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 511
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "CLOSE_TO_HOME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 512
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "CLOSE_FROM_FEED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 513
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "APP_TO_APP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 514
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "START_FIRST_TASK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v0, 0x8

    .line 506
    new-array v0, v0, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

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

    .line 506
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 506
    const-class v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 506
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0}, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object v0
.end method
