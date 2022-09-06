.class Lcom/miui/home/launcher/common/AppCategoryManager$1;
.super Landroid/os/AsyncTask;
.source "AppCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/AppCategoryManager;->getAppCategoryId(Landroid/content/Context;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/AppCategoryManager;

.field final synthetic val$callback:Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;[Ljava/lang/String;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->this$0:Lcom/miui/home/launcher/common/AppCategoryManager;

    iput-object p2, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->val$packageNames:[Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->val$callback:Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/AppCategoryManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->this$0:Lcom/miui/home/launcher/common/AppCategoryManager;

    iget-object v0, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->val$packageNames:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/common/AppCategoryManager;->getCategoryName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/AppCategoryManager$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/common/AppCategoryManager$1;->val$callback:Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;->onAppCategoryNameLoaded(Ljava/lang/String;)V

    return-void
.end method
