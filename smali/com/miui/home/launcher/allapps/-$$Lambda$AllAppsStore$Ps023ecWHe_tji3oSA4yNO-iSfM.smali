.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/AppInfo;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;->f$0:Lcom/miui/home/launcher/AppInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;->f$0:Lcom/miui/home/launcher/AppInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$Ps023ecWHe_tji3oSA4yNO-iSfM;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->lambda$updateMessage$1(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
