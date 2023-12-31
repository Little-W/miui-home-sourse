.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final synthetic f$2:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/systemui/shared/recents/model/ThumbnailData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$2:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$2:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Yj_AOzXtNKjPcPkpqf7ULKD_Ndg;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/recents/NavStubView;->lambda$switchToScreenshot$57$NavStubView(Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/systemui/shared/recents/model/ThumbnailData;I)V

    return-void
.end method
