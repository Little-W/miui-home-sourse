.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "HideAppAdapter.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder(Lcom/miui/home/settings/HideAppAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $appInfo:Lcom/miui/home/launcher/AppInfo;

.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 50
    new-instance p2, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;)V

    check-cast p2, Ljava/util/function/Function;

    .line 55
    new-instance v1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$2;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;Landroid/widget/CompoundButton;)V

    check-cast v1, Ljava/util/function/Consumer;

    .line 50
    invoke-static {p2, v1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_0
    iget-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object p2

    .line 87
    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    .line 65
    new-instance v2, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-static {v1}, Lcom/miui/home/settings/HideAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 66
    invoke-virtual {v2, v3}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 67
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 68
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {v2, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1100d5

    .line 69
    new-instance v2, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;Landroid/widget/CompoundButton;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110490

    .line 74
    new-instance v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/settings/HideAppAdapter;->access$setMRemoveTipDialog$p(Lcom/miui/home/settings/HideAppAdapter;Lmiui/home/lib/dialog/AlertDialog;)V

    .line 88
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {p0}, Lcom/miui/home/settings/HideAppAdapter;->access$getMRemoveTipDialog$p(Lcom/miui/home/settings/HideAppAdapter;)Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method
