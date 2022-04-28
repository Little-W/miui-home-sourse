.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;
.super Ljava/lang/Object;
.source "HideAppAdapter.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->apply(Ljava/lang/Void;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Void;)Z
    .locals 4

    .line 49
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p1, p1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {p1}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mContext.contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v0, v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v1, v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v2, v2, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {v2}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object v3, v3, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    iget-object v3, v3, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/launcher/LauncherHideApp;->restoreHideApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
