.class public Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
.super Lcom/miui/home/launcher/MIUIWidgetBasicInfo;
.source "MaMlWidgetInfo.java"


# instance fields
.field public appPackage:Ljava/lang/String;

.field public configPath:Ljava/lang/String;

.field public configSpanX:I

.field public configSpanY:I

.field public customEditUri:Ljava/lang/String;

.field public gadgetId:I

.field public hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field public maMlDownloadUrl:Ljava/lang/String;

.field public maMlTag:Ljava/lang/String;

.field public maMlTagCategory:Ljava/lang/String;

.field public mtzSizeInKb:J

.field public productId:Ljava/lang/String;

.field public resPath:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    const/16 v0, 0x13

    .line 87
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 92
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    .line 93
    iput p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    .line 94
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->calculateSpan()V

    return-void
.end method

.method private calculateSpan()V
    .locals 2

    .line 98
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    .line 99
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    .line 101
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellDefaultWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellDefaultHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    return-void
.end method


# virtual methods
.method protected getExtraIntentParams()Landroid/content/Intent;
    .locals 4

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pickerID"

    .line 172
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->pickerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlTagCategory"

    .line 173
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTagCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    .line 175
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appPackage"

    .line 176
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    .line 177
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ver"

    .line 178
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "verName"

    .line 179
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlVer"

    .line 180
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "status"

    .line 181
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "iconUri"

    .line 182
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uri"

    .line 183
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlUri"

    .line 184
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlSize"

    .line 185
    iget-wide v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "previewDark"

    .line 186
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previewLight"

    .line 187
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .line 132
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v0, 0x9

    .line 133
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    const/16 v0, 0xf

    .line 134
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    const/16 v0, 0x19

    .line 135
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 136
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x16

    .line 137
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    .line 138
    iget p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    invoke-static {p2, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createMaMlType(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->calculateSpan()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    .line 142
    iget-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {p2, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getLegacyResDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    iget v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-static {p1, p2, v1, v2, v3}, Lcom/miui/maml/widget/edit/MamlutilKt;->findLocalMamlInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 158
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 159
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getEditable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    .line 160
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getCustomEditLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getInfo()Lcom/miui/maml/widget/edit/MamlResource;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "%s_%s"

    .line 163
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    const/4 p2, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getInfo()Lcom/miui/maml/widget/edit/MamlResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getTitleMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getInfo()Lcom/miui/maml/widget/edit/MamlResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlResource;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onAddSpan(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "spanX"

    .line 126
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    .line 127
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "appWidgetId"

    .line 113
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "uri"

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "product_id"

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "pickerID"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->pickerID:Ljava/lang/String;

    const-string v0, "mamlTagCategory"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTagCategory:Ljava/lang/String;

    const-string v0, "appName"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    const-string v0, "appPackage"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    const-string v0, "source"

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    const-string v0, "ver"

    .line 198
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    const-string v0, "verName"

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersionName:Ljava/lang/String;

    const-string v0, "mamlVer"

    .line 200
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v0, "status"

    .line 201
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    const-string v0, "iconUri"

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v0, "uri"

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string v0, "mamlUri"

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    const-string v0, "mamlSize"

    const-wide/16 v1, 0x0

    .line 205
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    const-string v0, "previewDark"

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    const-string v0, "previewLight"

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    return-void
.end method

.method public refreshAppNameFromPackageManager(Landroid/content/Context;)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->user:Landroid/os/UserHandle;

    .line 227
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    :cond_0
    return-void
.end method
