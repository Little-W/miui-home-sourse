.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(ILandroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V
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

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;ILandroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iput p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$taskId:I

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$finalOptions:Landroid/app/ActivityOptions;

    iput-object p4, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$resultCallback:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$resultCallbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$taskId:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$finalOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0

    .line 1054
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$resultCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;->val$resultCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6$1;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
