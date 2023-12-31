.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/LauncherMode;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;->f$0:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;->f$0:Lcom/miui/home/launcher/allapps/LauncherMode;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->lambda$getRestoreFileFilter$0$LauncherMode(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
