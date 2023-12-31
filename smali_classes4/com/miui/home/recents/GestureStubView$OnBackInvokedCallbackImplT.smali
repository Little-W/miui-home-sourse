.class Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Lcom/miui/home/recents/OnBackInvokedCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnBackInvokedCallbackImplT"
.end annotation


# static fields
.field static sMethodNameOnBackCancelled:Ljava/lang/String; = "onBackCancelled"

.field static sMethodNameOnBackInvoked:Ljava/lang/String; = "onBackInvoked"

.field static sMethodNameOnBackProgressed:Ljava/lang/String; = "onBackProgressed"

.field static sMethodNameOnBackStarted:Ljava/lang/String; = "onBackStarted"


# instance fields
.field protected mBackNavigationInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackNavigationInfo()Ljava/lang/Object;
    .locals 0

    .line 1430
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    return-object p0
.end method

.method public onBackCancelled()V
    .locals 4

    .line 1414
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1415
    sget-object v1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->sMethodNameOnBackCancelled:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->invokeOnBackInvokedCallbackMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1416
    iput-object v3, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onBackInvoke()V
    .locals 4

    .line 1422
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1423
    sget-object v1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->sMethodNameOnBackInvoked:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->invokeOnBackInvokedCallbackMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1424
    iput-object v3, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onBackProgressed(FFFFFILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onBackStart(FFFFFILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Class;

    .line 1402
    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    new-array p3, p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBackNavigationInfo([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    .line 1403
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->mBackNavigationInfo:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 1404
    sget-object p1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;->sMethodNameOnBackStarted:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->invokeOnBackInvokedCallbackMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
