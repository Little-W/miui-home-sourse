.class Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;
.super Ljava/lang/Object;
.source "BackupSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/backup/BackupSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/backup/BackupSettingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/miui/home/launcher/backup/BackupSettingHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;-><init>(Lcom/miui/home/launcher/backup/BackupSettingHelper$1;)V

    sput-object v0, Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/backup/BackupSettingHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/backup/BackupSettingHelper;
    .locals 1

    .line 41
    sget-object v0, Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/backup/BackupSettingHelper;

    return-object v0
.end method
