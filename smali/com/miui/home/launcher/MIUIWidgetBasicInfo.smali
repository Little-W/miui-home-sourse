.class public Lcom/miui/home/launcher/MIUIWidgetBasicInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "MIUIWidgetBasicInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;
    }
.end annotation


# instance fields
.field public addSource:I

.field public appIconPreUrl:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public appVersion:I

.field public appVersionName:Ljava/lang/String;

.field public canDragFromHomeToPA:Z

.field public defaultSource:I

.field public downloadUri:Ljava/lang/String;

.field public editUri:Ljava/lang/String;

.field public isEditable:Z

.field public isMIUIWidget:Z

.field public movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

.field public originWidgetId:I

.field public pickerID:Ljava/lang/String;

.field public previewUrlDark:Ljava/lang/String;

.field public previewUrlLight:Ljava/lang/String;

.field public resultToastForWidgetAdd:Ljava/lang/String;

.field public showWidgetAddedToast:Z

.field public showWidgetNumberWarningToast:Z

.field public status:I

.field public tip_source:I

.field public transitionBitmap:Landroid/graphics/Bitmap;

.field public warningToastForWidgetNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    return-void
.end method


# virtual methods
.method protected getExtraIntentParams()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .line 129
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 p1, 0x18

    .line 130
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    const/16 p1, 0x13

    .line 131
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 132
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    .line 134
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :try_start_0
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 138
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->parsePendingWidgetParams(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    and-int/lit8 p2, p1, 0x40

    const/16 v0, 0x40

    if-ne p2, v0, :cond_2

    .line 144
    iput v3, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    :cond_2
    const/16 p2, 0x80

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_3

    move v1, v3

    .line 146
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "originWidgetId"

    .line 151
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "intent"

    .line 158
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-boolean p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    or-int/lit8 p1, p1, 0x20

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    .line 161
    iget-boolean p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    or-int/lit16 p1, p1, 0x80

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    :goto_2
    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    const-string p1, "itemFlags"

    .line 162
    iget v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->itemFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public setDefaultSource(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    return-void
.end method
