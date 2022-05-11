.class Lcom/miui/home/launcher/Launcher$44;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
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
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$providerUri:Ljava/lang/String;

.field final synthetic val$requestJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4330
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$44;->val$providerUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$44;->val$requestJson:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4330
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$44;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 4333
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$44;->val$providerUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$44;->val$requestJson:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5600(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
