.class final Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;
.super Ljava/lang/Object;
.source "StatusBarIconTypeAnimHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 55
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-static {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->access$getMFloatingIconView$p(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "StatusBarIconTypeAnimHelper"

    const-string v0, "FocusNotifyAnimFinish timeout"

    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->onFocusNotifyAnimFinish()V

    :cond_0
    return-void
.end method
