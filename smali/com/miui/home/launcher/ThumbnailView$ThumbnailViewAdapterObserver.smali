.class Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailViewAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ThumbnailView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ThumbnailView;Lcom/miui/home/launcher/ThumbnailView$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;-><init>(Lcom/miui/home/launcher/ThumbnailView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailView;->reLoadThumbnails()V

    .line 204
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->onChanged()V

    return-void
.end method
