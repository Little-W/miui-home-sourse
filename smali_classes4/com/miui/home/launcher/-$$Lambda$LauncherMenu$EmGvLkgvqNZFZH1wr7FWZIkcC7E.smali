.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$EmGvLkgvqNZFZH1wr7FWZIkcC7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$EmGvLkgvqNZFZH1wr7FWZIkcC7E;->f$0:Lcom/miui/home/launcher/LauncherMenu;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$EmGvLkgvqNZFZH1wr7FWZIkcC7E;->f$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherMenu;->lambda$initCellSetting$0$LauncherMenu(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
