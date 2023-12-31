.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iput-boolean p2, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iget-boolean p0, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;->f$1:Z

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->lambda$startRemoveTaskMenuAnim$1$SpringAnimationUtils(ZLcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
