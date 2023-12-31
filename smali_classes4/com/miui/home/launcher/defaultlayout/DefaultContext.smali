.class public final Lcom/miui/home/launcher/defaultlayout/DefaultContext;
.super Ljava/lang/Object;
.source "DefaultContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultContext.kt\ncom/miui/home/launcher/defaultlayout/DefaultContext\n*L\n1#1,82:1\n*E\n"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mAttrs:Landroid/util/AttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentToken:Ljava/lang/String;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mTotalDepth:I

.field private final parser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetHost"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const-string v0, "Application.getInstance(\u2026esources.getXml(layoutID)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    iput-object p3, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mContext:Landroid/content/Context;

    .line 31
    iput-object p4, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mTotalDepth:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentIndex:I

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "mContext.packageManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    check-cast p1, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    const-string p2, "Xml.asAttributeSet(parser)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mAttrs:Landroid/util/AttributeSet;

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    const-string p1, "favorites"

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    return-void
.end method

.method private final checkNotEnd(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    iget p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mTotalDepth:I

    if-le v1, p0, :cond_1

    :cond_0
    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 79
    sget-object p0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->destroy()V

    return-void
.end method

.method public final getCurrentTypedArray()Landroid/content/res/TypedArray;
    .locals 2

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mAttrs:Landroid/util/AttributeSet;

    sget-object v1, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/Application;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string v0, "Application.getInstance(\u2026rs, R.styleable.Favorite)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMCurrentToken()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getMDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public final getMPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public final getParser()Landroid/content/res/XmlResourceParser;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    return-object p0
.end method

.method public final nextToken()Ljava/lang/String;
    .locals 2

    .line 43
    iget v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->checkNotEnd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentIndex:I

    .line 48
    iget v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->nextToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->mCurrentToken:Ljava/lang/String;

    return-object p0

    .line 53
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "default layout next token is error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final skipCurrentToken()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    if-eqz v2, :cond_3

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 67
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
