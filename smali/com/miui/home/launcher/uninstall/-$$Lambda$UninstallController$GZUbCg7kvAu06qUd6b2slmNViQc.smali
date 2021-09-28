.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->lambda$deleteMiuiWidgetWidthBoomAnim$1(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    return-void
.end method
