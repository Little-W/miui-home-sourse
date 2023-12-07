.class final enum Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$AnimationProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$AnimationProperty$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1488
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1489
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v2, 0x1

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1490
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v3, 0x2

    const-string v4, "PAUSE"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1491
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v4, 0x3

    const-string v5, "RESUME"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1492
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v5, 0x4

    const-string v6, "PLAY_WITH_PARAMS"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1487
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    aput-object v6, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
    .locals 1

    .line 1487
    const-class v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
    .locals 1

    .line 1487
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    return-object v0
.end method
