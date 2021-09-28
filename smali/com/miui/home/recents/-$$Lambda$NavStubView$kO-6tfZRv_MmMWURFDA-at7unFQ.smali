.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$kO-6tfZRv_MmMWURFDA-at7unFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$kO-6tfZRv_MmMWURFDA-at7unFQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$kO-6tfZRv_MmMWURFDA-at7unFQ;->f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$kO-6tfZRv_MmMWURFDA-at7unFQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$kO-6tfZRv_MmMWURFDA-at7unFQ;->f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->lambda$switchToScreenshot$38(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
