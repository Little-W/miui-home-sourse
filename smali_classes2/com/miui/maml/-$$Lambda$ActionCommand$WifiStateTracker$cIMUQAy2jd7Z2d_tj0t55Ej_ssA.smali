.class public final synthetic Lcom/miui/maml/-$$Lambda$ActionCommand$WifiStateTracker$cIMUQAy2jd7Z2d_tj0t55Ej_ssA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/-$$Lambda$ActionCommand$WifiStateTracker$cIMUQAy2jd7Z2d_tj0t55Ej_ssA;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/maml/-$$Lambda$ActionCommand$WifiStateTracker$cIMUQAy2jd7Z2d_tj0t55Ej_ssA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/-$$Lambda$ActionCommand$WifiStateTracker$cIMUQAy2jd7Z2d_tj0t55Ej_ssA;->f$0:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/miui/maml/-$$Lambda$ActionCommand$WifiStateTracker$cIMUQAy2jd7Z2d_tj0t55Ej_ssA;->f$1:Z

    invoke-static {v0, p0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->lambda$requestStateChange$0(Landroid/content/Context;Z)V

    return-void
.end method
