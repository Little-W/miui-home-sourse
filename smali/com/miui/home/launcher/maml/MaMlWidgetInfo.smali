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

.field public mtzSizeInKb:J

.field public productId:Ljava/lang/String;

.field public resPath:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    const/16 v0, 0x12

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 87
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    .line 88
    iput p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->calculateSpan()V

    return-void
.end method

.method private calculateSpan()V
    .locals 2

    .line 93
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    .line 94
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    .line 96
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellDefaultWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    .line 102
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

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pickerID"

    .line 149
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->pickerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    .line 150
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appPackage"

    .line 151
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    .line 152
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ver"

    .line 153
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "verName"

    .line 154
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlVer"

    .line 155
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "status"

    .line 156
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "iconUri"

    .line 157
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uri"

    .line 158
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlUri"

    .line 159
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mamlSize"

    .line 160
    iget-wide v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "previewDark"

    .line 161
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previewLight"

    .line 162
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
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
    .locals 3

    .line 126
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v0, 0x9

    .line 127
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    const/16 v0, 0xf

    .line 128
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    const/16 v0, 0x19

    .line 129
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 130
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x16

    .line 131
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    .line 132
    iget p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanX:I

    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->spanY:I

    invoke-static {p2, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createMaMlType(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->calculateSpan()V

    .line 136
    invoke-static {p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    .line 135
    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/maml/widget/edit/MamlutilKt;->findLocalMamlInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 141
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 142
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getEditable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    .line 143
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getCustomEditLink()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    return-void
.end method

.method public onAddSpan(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "spanX"

    .line 120
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    .line 121
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 107
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "appWidgetId"

    .line 108
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "uri"

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "product_id"

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "pickerID"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->pickerID:Ljava/lang/String;

    const-string v0, "appName"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    const-string v0, "appPackage"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    const-string v0, "source"

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    const-string v0, "ver"

    .line 172
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    const-string v0, "verName"

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersionName:Ljava/lang/String;

    const-string v0, "mamlVer"

    .line 174
    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v0, "status"

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    const-string v0, "iconUri"

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v0, "uri"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string v0, "mamlUri"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    const-string v0, "mamlSize"

    const-wide/16 v1, 0x0

    .line 179
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    const-string v0, "previewDark"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    const-string v0, "previewLight"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    return-void
.end method
