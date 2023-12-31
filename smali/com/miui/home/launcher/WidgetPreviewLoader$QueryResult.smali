.class public Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryResult"
.end annotation


# instance fields
.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public mDescription:Ljava/lang/String;

.field public mDetailsPreview:Landroid/view/View;

.field public mIsPreview:Z

.field public mIsShowDetails:Z

.field public mPreview:Landroid/graphics/drawable/Drawable;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
