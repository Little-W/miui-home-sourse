.class Lcom/miui/home/launcher/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$id:J

.field final synthetic val$item:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;JLcom/miui/home/launcher/ItemInfo;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$4;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iput-wide p2, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$id:J

    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iput-object p5, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 863
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 864
    iget-wide v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 865
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 866
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
