.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;
.super Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryOrderUpdateCallback"
.end annotation


# instance fields
.field private mAnimEnable:Z

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    .line 207
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;-><init>(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected isAnimEnable()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->mAnimEnable:Z

    return v0
.end method

.method setAnimEnable(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->mAnimEnable:Z

    return-void
.end method
