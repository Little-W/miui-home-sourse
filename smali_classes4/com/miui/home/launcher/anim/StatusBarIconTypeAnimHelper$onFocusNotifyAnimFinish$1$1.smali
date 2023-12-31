.class final Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$onFocusNotifyAnimFinish$1$1;
.super Ljava/lang/Object;
.source "StatusBarIconTypeAnimHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusNotifyAnimFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/miui/home/recents/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$onFocusNotifyAnimFinish$1$1;->$it:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$onFocusNotifyAnimFinish$1$1;->$it:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finishImmediately()V

    .line 28
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    const/4 v0, 0x0

    check-cast v0, Lcom/miui/home/recents/views/FloatingIconView;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->access$setMFloatingIconView$p(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;Lcom/miui/home/recents/views/FloatingIconView;)V

    return-void
.end method
