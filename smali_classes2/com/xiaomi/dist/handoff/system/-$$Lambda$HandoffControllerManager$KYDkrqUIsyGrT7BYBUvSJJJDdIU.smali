.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$KYDkrqUIsyGrT7BYBUvSJJJDdIU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    check-cast p2, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$getAllHandoffTask$4(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I

    move-result p0

    return p0
.end method
