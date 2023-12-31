.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->lambda$notifyCurrentScreenShowingItem$1(Landroid/view/View;)V

    return-void
.end method
