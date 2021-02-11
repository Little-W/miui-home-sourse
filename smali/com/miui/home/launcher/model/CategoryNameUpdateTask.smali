.class public Lcom/miui/home/launcher/model/CategoryNameUpdateTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "CategoryNameUpdateTask.java"


# instance fields
.field private final mCategoryId:I

.field private final mCategoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mCategoryId:I

    .line 18
    iput-object p2, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mCategoryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->bindCategoryNameUpdate()V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 0

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategorySettingHelper;->disableAppCategoryUpdateEnable()V

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 25
    iget p2, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mCategoryId:I

    iget-object p3, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mCategoryName:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/LauncherCategory$Category;->updateCategoryName(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget p2, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mCategoryId:I

    iget-object p3, p0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/AllCategoryList;->updateCategoryName(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
