.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;->f$1:Z

    iget-object v2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->lambda$onOutRange$0(Lcom/miui/home/recents/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
