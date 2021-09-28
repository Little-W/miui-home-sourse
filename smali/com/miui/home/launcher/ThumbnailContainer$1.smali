.class Lcom/miui/home/launcher/ThumbnailContainer$1;
.super Ljava/lang/Object;
.source "ThumbnailContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ThumbnailContainer;->onDrop(Lcom/miui/home/launcher/DragObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailContainer;

.field final synthetic val$itemInfo:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ThumbnailContainer;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainer;

    iput-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer$1;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer$1;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method
