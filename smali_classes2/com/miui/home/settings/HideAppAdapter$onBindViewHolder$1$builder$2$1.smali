.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;
.super Ljava/lang/Object;
.source "HideAppAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->invoke(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHideAppAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppAdapter.kt\ncom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1\n*L\n1#1,101:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {v0}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mContext.contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v1, v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v1, v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v2, v2, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v2, v2, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v3, v3, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v3, v3, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {v3}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v4, v4, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v4, v4, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 74
    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherHideApp;->addHideApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v0

    const-string v1, "it"

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHiddenAppNotificationsItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;

    iget-object v1, v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$builder$2;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v1, v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {v1}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherHideApp;->closeHiddenAppNotifications(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
