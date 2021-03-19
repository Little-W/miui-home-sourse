.class Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;
.super Landroid/os/AsyncTask;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/ConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/util/ConfigFile;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->mContext:Landroid/content/Context;

    .line 455
    iput-object p3, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->mData:Ljava/lang/String;

    .line 456
    iput-object p4, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 448
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "content://com.miui.maml.provider"

    .line 462
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 464
    iget-object v3, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "path"

    .line 465
    iget-object v3, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "saveConfigFile"

    invoke-virtual {v2, v0, v3, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method
