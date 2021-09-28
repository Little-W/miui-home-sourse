.class public final Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "DeleteAppAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/DeleteAppAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $appInfo:Lcom/miui/home/settings/DeleteAppInfo;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/miui/home/settings/DeleteAppAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/DeleteAppAdapter;Lcom/miui/home/settings/DeleteAppInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            "I)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    iput-object p2, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    iput p3, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 79
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    .line 81
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    iget v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$position:I

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/DeleteAppAdapter;->notifyItemChanged(I)V

    .line 82
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInfo.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/miui/home/settings/DeleteAppAdapter;->access$installAppByPackageName(Lcom/miui/home/settings/DeleteAppAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 85
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "Application.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-static {v0}, Lcom/miui/home/settings/DeleteAppAdapter;->access$getTAG$p(Lcom/miui/home/settings/DeleteAppAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v2}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "failed, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
