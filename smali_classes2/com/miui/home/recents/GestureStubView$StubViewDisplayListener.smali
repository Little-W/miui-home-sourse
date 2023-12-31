.class Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubViewDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 1319
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V
    .locals 0

    .line 1319
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    const-string p1, "GestureStubView"

    const-string v0, "onDisplayChanged"

    .line 1331
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/GestureStubView;->access$3400(Lcom/miui/home/recents/GestureStubView;Z)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
