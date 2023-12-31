.class Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;
.super Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnBackInvokedCallbackImplU"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1434
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackProgressed(FFFFFILjava/lang/Object;)V
    .locals 5

    .line 1448
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->mBackNavigationInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1449
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->mBackNavigationInfo:Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->sMethodNameOnBackProgressed:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {}, Landroid/window/BackMotionEventProvider;->getBackMotionEventClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1450
    invoke-static/range {p1 .. p7}, Landroid/window/BackMotionEventProvider;->getInstance(FFFFFILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v4

    .line 1449
    invoke-static {p0, v0, v2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->invokeOnBackInvokedCallbackMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackStart(FFFFFILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "android.os.RemoteCallback"

    .line 1438
    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.window.BackAnimationAdapter"

    .line 1439
    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    .line 1438
    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBackNavigationInfo([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->mBackNavigationInfo:Ljava/lang/Object;

    .line 1440
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->mBackNavigationInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1441
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->mBackNavigationInfo:Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;->sMethodNameOnBackStarted:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-static {}, Landroid/window/BackMotionEventProvider;->getBackMotionEventClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    .line 1442
    invoke-static/range {p1 .. p7}, Landroid/window/BackMotionEventProvider;->getInstance(FFFFFILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v3

    .line 1441
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->invokeOnBackInvokedCallbackMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
