.class Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;
.super Ljava/lang/Object;
.source "CategorySettingFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateCategoryTask"
.end annotation


# instance fields
.field private mUiExecutor:Ljava/util/concurrent/Executor;

.field private mUpdateCategoryRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;->this$0:Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance p1, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$UpdateCategoryTask$DblXTpmj-lYSIEhVLj49bqP0-UM;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$UpdateCategoryTask$DblXTpmj-lYSIEhVLj49bqP0-UM;-><init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;->mUpdateCategoryRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 212
    iput-object p4, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic lambda$new$0$CategorySettingFragment$UpdateCategoryTask()V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;->this$0:Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->access$000(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateCategoryList()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment$UpdateCategoryTask;->mUpdateCategoryRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
