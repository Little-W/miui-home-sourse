.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$TaskView$ssbTZ4aMQ4ENrRNRFSDiZNxBd8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$TaskView$ssbTZ4aMQ4ENrRNRFSDiZNxBd8w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$TaskView$ssbTZ4aMQ4ENrRNRFSDiZNxBd8w;

    invoke-direct {v0}, Lcom/miui/home/recents/views/-$$Lambda$TaskView$ssbTZ4aMQ4ENrRNRFSDiZNxBd8w;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/-$$Lambda$TaskView$ssbTZ4aMQ4ENrRNRFSDiZNxBd8w;->INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$TaskView$ssbTZ4aMQ4ENrRNRFSDiZNxBd8w;

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

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskView;->lambda$setFullscreenProgress$3(Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
