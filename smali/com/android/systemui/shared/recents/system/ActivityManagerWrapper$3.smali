.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityBelowAndroidS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field final synthetic val$assistDataReceiver:Lcom/android/systemui/shared/recents/system/AssistDataReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;->val$assistDataReceiver:Lcom/android/systemui/shared/recents/system/AssistDataReceiver;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;->val$assistDataReceiver:Lcom/android/systemui/shared/recents/system/AssistDataReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/AssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;->val$assistDataReceiver:Lcom/android/systemui/shared/recents/system/AssistDataReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/AssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
