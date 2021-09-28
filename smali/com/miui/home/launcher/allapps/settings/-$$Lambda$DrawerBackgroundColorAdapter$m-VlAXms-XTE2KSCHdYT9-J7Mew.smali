.class public final synthetic Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;->f$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;->f$1:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iput p3, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;->f$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;->f$1:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v2, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;Lcom/miui/home/launcher/allapps/AllAppsColorMode;ILandroid/view/View;)V

    return-void
.end method
