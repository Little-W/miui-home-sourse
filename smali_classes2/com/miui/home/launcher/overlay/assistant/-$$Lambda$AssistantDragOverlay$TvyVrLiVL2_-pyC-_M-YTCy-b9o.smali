.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;

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

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$8(Landroid/os/Bundle;)V

    return-void
.end method
