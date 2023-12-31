.class Lcom/miui/home/launcher/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$info:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$6;->val$info:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$6;->val$cr:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$6;->val$info:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v1, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
