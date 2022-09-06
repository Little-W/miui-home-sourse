.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;
.super Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryOrderUpdateCallback"
.end annotation


# instance fields
.field private mAnimEnable:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected isAnimEnable()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->mAnimEnable:Z

    return v0
.end method

.method setAnimEnable(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->mAnimEnable:Z

    return-void
.end method
