.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field final synthetic val$finalOptions:Landroid/app/ActivityOptions;

.field final synthetic val$resultCallback:Ljava/util/function/Consumer;

.field final synthetic val$resultCallbackHandler:Landroid/os/Handler;

.field final synthetic val$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$finalOptions:Landroid/app/ActivityOptions;

    iput-object p4, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$resultCallback:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$resultCallbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$finalOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 463
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$resultCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$resultCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4$1;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
