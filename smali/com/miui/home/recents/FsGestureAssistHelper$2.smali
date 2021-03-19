.class Lcom/miui/home/recents/FsGestureAssistHelper$2;
.super Landroid/database/ContentObserver;
.source "FsGestureAssistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/FsGestureAssistHelper;->registerAssistObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/FsGestureAssistHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/FsGestureAssistHelper;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper$2;->this$0:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/miui/home/recents/FsGestureAssistHelper$2;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper$2;->this$0:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-static {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->access$100(Lcom/miui/home/recents/FsGestureAssistHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/AssistManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/system/AssistManager;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/system/AssistManager;->isSupportGoogleAssist(I)Z

    move-result v1

    .line 81
    invoke-static {v0, v1}, Lcom/miui/home/recents/FsGestureAssistHelper;->access$002(Lcom/miui/home/recents/FsGestureAssistHelper;Z)Z

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$FsGestureAssistHelper$2$ygTHn7T3gnN2g1Wd4BDz6ngo9o8;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$FsGestureAssistHelper$2$ygTHn7T3gnN2g1Wd4BDz6ngo9o8;-><init>(Lcom/miui/home/recents/FsGestureAssistHelper$2;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
