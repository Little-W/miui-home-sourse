.class final Lcom/miui/home/launcher/commercial/CommercialCommons$2;
.super Ljava/lang/Object;
.source "CommercialCommons.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/CommercialCommons;->onLoadSuccess(Landroid/net/Uri;Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Ljava8/util/function/Consumer;

.field final synthetic val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Landroid/net/Uri;Ljava8/util/function/Consumer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$consumer:Ljava8/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 148
    invoke-virtual {v3}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;->val$consumer:Ljava8/util/function/Consumer;

    .line 145
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava8/util/function/Consumer;)V

    :cond_0
    return-void
.end method
