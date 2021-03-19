.class Lcom/miui/home/recents/ThumbnailBlurManager$1;
.super Landroid/database/ContentObserver;
.source "ThumbnailBlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ThumbnailBlurManager;->registerThumbnailBlurResolver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ThumbnailBlurManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ThumbnailBlurManager;Landroid/os/Handler;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/recents/ThumbnailBlurManager$1;->this$0:Lcom/miui/home/recents/ThumbnailBlurManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/miui/home/recents/ThumbnailBlurManager$1;->this$0:Lcom/miui/home/recents/ThumbnailBlurManager;

    .line 73
    invoke-static {p1}, Lcom/miui/home/recents/ThumbnailBlurManager;->access$000(Lcom/miui/home/recents/ThumbnailBlurManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/miui/home/recents/ThumbnailBlurManager;->access$100()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleCurrentUserId:I

    .line 72
    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager$1;->this$0:Lcom/miui/home/recents/ThumbnailBlurManager;

    invoke-static {v0}, Lcom/miui/home/recents/ThumbnailBlurManager;->access$000(Lcom/miui/home/recents/ThumbnailBlurManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 77
    invoke-static {p1}, Lcom/miui/home/recents/ThumbnailBlurManager;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setThumbnailBlurPkgSet(Ljava/util/HashSet;)V

    return-void
.end method
