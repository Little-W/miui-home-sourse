.class public Lcom/miui/maml/LargeIconDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "LargeIconDrawable.java"


# static fields
.field public static final DRAWABLE_TYPE_ANIMATING:Ljava/lang/String; = "animating_icons"

.field public static final DRAWABLE_TYPE_FANCY:Ljava/lang/String; = "fancy_icons"

.field public static final DRAWABLE_TYPE_LAYER_ANIMATING:Ljava/lang/String; = "layer_animating_icons"

.field public static final DRAWABLE_TYPE_PAIR:Ljava/lang/String; = "pair"

.field public static final DRAWABLE_TYPE_RES:Ljava/lang/String; = "res"


# instance fields
.field private enableIconMask:I

.field private isPairApp:I

.field private localId:Ljava/lang/String;

.field private mActivityName:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableType:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDrawableType()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->mDrawableType:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableIconMask()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/miui/maml/LargeIconDrawable;->enableIconMask:I

    return p0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->localId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/maml/LargeIconDrawable;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public isPairApp()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/miui/maml/LargeIconDrawable;->isPairApp:I

    return p0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDrawableType(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->mDrawableType:Ljava/lang/String;

    return-void
.end method

.method public setEnableIconMask(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/miui/maml/LargeIconDrawable;->enableIconMask:I

    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->localId:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPairApp(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/maml/LargeIconDrawable;->isPairApp:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->mType:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/maml/LargeIconDrawable;->uuid:Ljava/lang/String;

    return-void
.end method
