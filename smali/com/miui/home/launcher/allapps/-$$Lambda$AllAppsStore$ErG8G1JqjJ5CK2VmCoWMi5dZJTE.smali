.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$ErG8G1JqjJ5CK2VmCoWMi5dZJTE;
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

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$ErG8G1JqjJ5CK2VmCoWMi5dZJTE;->f$0:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsStore$ErG8G1JqjJ5CK2VmCoWMi5dZJTE;->f$0:Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->lambda$updateTitleTip$122(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
