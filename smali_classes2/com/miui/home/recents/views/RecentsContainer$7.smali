.class Lcom/miui/home/recents/views/RecentsContainer$7;
.super Landroid/database/ContentObserver;
.source "RecentsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/RecentsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/miui/home/recents/views/RecentsContainer$7;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 568
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "showRecentsRecommend"

    const-string v1, "isShow"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 570
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_recents_show_recommend"

    invoke-static {v1, v2, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$502(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$onChange$1(Lcom/miui/home/recents/views/RecentsContainer$7;Ljava/lang/Void;)V
    .locals 0

    .line 573
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$400(Lcom/miui/home/recents/views/RecentsContainer;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 567
    new-instance p1, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$mFqrg41N2GVQG7hRMCdmrH_OG8k;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$mFqrg41N2GVQG7hRMCdmrH_OG8k;-><init>(Lcom/miui/home/recents/views/RecentsContainer$7;)V

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$A7ExEV-4QSiey_NQBfTPHOBoc00;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$A7ExEV-4QSiey_NQBfTPHOBoc00;-><init>(Lcom/miui/home/recents/views/RecentsContainer$7;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
