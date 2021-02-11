.class public final Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "BaseDelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/smallwindow/BaseDelegateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemInfo"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPackageName:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mTitle:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object p3, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mPackageName:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mClassName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method
