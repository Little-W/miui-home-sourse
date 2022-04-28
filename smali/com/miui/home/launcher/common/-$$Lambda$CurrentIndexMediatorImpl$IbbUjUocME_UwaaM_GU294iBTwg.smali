.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;

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

    invoke-static {p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->lambda$notifyCurrentScreenShowingItem$1(Landroid/view/View;)V

    return-void
.end method
