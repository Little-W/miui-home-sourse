.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;
.super Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppSelectListUpdateCallback"
.end annotation


# instance fields
.field private mAnimEnable:Z

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    .line 234
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;-><init>(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected isAnimEnable()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->mAnimEnable:Z

    return v0
.end method

.method setAnimEnable(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->mAnimEnable:Z

    return-void
.end method
