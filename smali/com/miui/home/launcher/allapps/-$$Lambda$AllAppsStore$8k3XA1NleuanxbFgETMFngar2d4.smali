.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;->f$0:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$8k3XA1NleuanxbFgETMFngar2d4;->f$0:Lcom/miui/home/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->lambda$updateTitleTip$0(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
